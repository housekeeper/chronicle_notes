require 'test_helper'

class ChronicleNotesControllerTest < ActionController::TestCase
  setup do
    @chronicle_note = chronicle_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chronicle_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chronicle_note" do
    assert_difference('ChronicleNote.count') do
      post :create, chronicle_note: {  }
    end

    assert_redirected_to chronicle_note_path(assigns(:chronicle_note))
  end

  test "should show chronicle_note" do
    get :show, id: @chronicle_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chronicle_note
    assert_response :success
  end

  test "should update chronicle_note" do
    put :update, id: @chronicle_note, chronicle_note: {  }
    assert_redirected_to chronicle_note_path(assigns(:chronicle_note))
  end

  test "should destroy chronicle_note" do
    assert_difference('ChronicleNote.count', -1) do
      delete :destroy, id: @chronicle_note
    end

    assert_redirected_to chronicle_notes_path
  end
end
