<script src="{{ asset('dist/js/scripts.js') }}"></script>
<script src="{{ asset('dist/js/custom.js') }}"></script>



{{-- <script>
    function delete_($id){
        let token = $('input[name="_token"]').val();
        $.ajax({
            url : '/admin/category/delete/' + $id ,
            type : 'DELETE',
            headers: {
                    'x-csrf-token': token
            },
            success : (response) => {
                alert(response.message);
                $(`tr[data-id="${id}"]`).remove();
            },
            error : (error) => {
                let response = error.responseJSON;
                alert(response.error);
            }
        })
    }
</script> --}}