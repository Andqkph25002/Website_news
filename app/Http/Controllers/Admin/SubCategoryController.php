<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    public function show()
    {
        $subCategory = SubCategory::with('rCategory')->orderBy('sub_category_order', 'asc')->get();
        return view('admin.SubCategory.show', compact('subCategory'));
    }
    public function create()
    {
        $category = Category::orderBy('id', 'desc')->get();
        return view('admin.SubCategory.create', compact('category'));
    }
    public function store(Request $request)
    {
        $request->validate([
            'sub_category_name' => 'required|max:225',
            'sub_category_order' => 'required|max:225',
            'category_id' => 'required'
        ]);
        $sub_category = new SubCategory();
        $sub_category->sub_category_name = $request->sub_category_name;
        $sub_category->sub_category_order = $request->sub_category_order;
        $sub_category->show_on_menu = $request->show_on_menu;
        $sub_category->show_on_home = $request->show_on_home;
        $sub_category->category_id = $request->category_id;
        $sub_category->save();
        return redirect()->route('admin_sub_category_show')->with('success', 'Data is added successfully !');
    }
    public function edit($id)
    {
        $category = Category::orderBy('id', 'desc')->get();
        $sub_category = SubCategory::where('id', $id)->first();
        return view('admin.SubCategory.edit', compact('category', 'sub_category'));
    }
    public function update(Request $request){
        $request->validate([
            'sub_category_name' => 'required|max:225',
            'sub_category_order' => 'required|max:225',
            'category_id' => 'required'
        ]);
        $sub_category = SubCategory::where('id' , $request->id)->first();
        $sub_category->sub_category_name = $request->sub_category_name;
        $sub_category->sub_category_order = $request->sub_category_order;
        $sub_category->show_on_menu = $request->show_on_menu;
        $sub_category->show_on_home = $request->show_on_home;
        $sub_category->category_id = $request->category_id;
        $sub_category->update();
       return redirect()->route('admin_sub_category_show')->with('success' , 'Data is updated successfully !');
    }
    public function delete($id)
    {
        $category = SubCategory::where('id' , $id)->first();
        $category->delete();
        return redirect()->route('admin_sub_category_show')->with('success' , 'Data is deleted successfully !');
    }
    
}
