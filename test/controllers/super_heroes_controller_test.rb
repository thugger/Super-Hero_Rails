require 'test_helper'

class SuperHeroesControllerTest < ActionController::TestCase
  setup do
    @super_hero = super_heroes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:super_heroes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create super_hero" do
    assert_difference('SuperHero.count') do
      post :create, super_hero: { hero_name: @super_hero.hero_name, real_name: @super_hero.real_name }
    end

    assert_redirected_to super_hero_path(assigns(:super_hero))
  end

  test "should show super_hero" do
    get :show, id: @super_hero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @super_hero
    assert_response :success
  end

  test "should update super_hero" do
    patch :update, id: @super_hero, super_hero: { hero_name: @super_hero.hero_name, real_name: @super_hero.real_name }
    assert_redirected_to super_hero_path(assigns(:super_hero))
  end

  test "should destroy super_hero" do
    assert_difference('SuperHero.count', -1) do
      delete :destroy, id: @super_hero
    end

    assert_redirected_to super_heroes_path
  end
end
