<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function show()
    {
        $category = Category::orderBy('category_order', 'asc')->get();
        return view('admin.Category.category_show', compact('category'));
    }
    public function create()
    {
        return view('admin.Category.category_create');
    }
    public function store(Request $request)
    {
          $request->validate([
              'category_name' => 'required|max:225',
              'category_order' => 'required|max:225',
          ]);
          $category = new Category();
          $category->category_name = $request->category_name;
          $category->category_order = $request->category_order;
          $category->show_on_menu = $request->show_on_menu;
          $category->save();
         return redirect()->route('admin_category_show')->with('success' , 'Data is added successfully !');
    }

    public function edit($id)
    {
        $category = Category::where('id' , $id)->first();
        return view('admin.Category.category_edit' , compact('category'));
    }
    public function update(Request $request)
    {
        $request->validate([
            'category_name' => 'required|max:225',
            'category_order' => 'required|max:225',
        ]);
        $category = Category::where('id' , $request->id)->first();
        $category->category_name = $request->category_name;
        $category->category_order = $request->category_order;
        $category->show_on_menu = $request->show_on_menu;
        $category->update();
       return redirect()->route('admin_category_show')->with('success' , 'Data is updated successfully !');
    }
    public function delete($id)
    {
        $category = Category::where('id' , $id)->first();
        $category->delete();
        return redirect()->route('admin_category_show')->with('success' , 'Data is deleted successfully !');
    }
}
