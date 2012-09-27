require 'test_helper'

class DiaferiadosControllerTest < ActionController::TestCase
  setup do
    @diaferiado = diaferiados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diaferiados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diaferiado" do
    assert_difference('Diaferiado.count') do
      post :create, diaferiado: { dectription: @diaferiado.dectription, fecha: @diaferiado.fecha }
    end

    assert_redirected_to diaferiado_path(assigns(:diaferiado))
  end

  test "should show diaferiado" do
    get :show, id: @diaferiado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diaferiado
    assert_response :success
  end

  test "should update diaferiado" do
    put :update, id: @diaferiado, diaferiado: { dectription: @diaferiado.dectription, fecha: @diaferiado.fecha }
    assert_redirected_to diaferiado_path(assigns(:diaferiado))
  end

  test "should destroy diaferiado" do
    assert_difference('Diaferiado.count', -1) do
      delete :destroy, id: @diaferiado
    end

    assert_redirected_to diaferiados_path
  end
end
