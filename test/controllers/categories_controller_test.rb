require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: 'Limpieza', active: true)
  end

  test 'should get index' do
    get categories_url
    assert_response :success
  end

  test 'should get new' do
    get new_category_url
    assert_response :success
  end

  test 'should create category' do
    assert_difference 'Category.count', 1 do
      post categories_url, params: { category: { active: true, name: 'Baches' } }
    end

    assert_redirected_to category_url(Category.last)
  end

  test 'should show category' do
    # Category.create(name: 'Limpienza', active: true)
    get category_url(Category.last.id)
    assert_response :success
  end

  test 'should get edit' do
    # category = Category.create(name: 'Limpieza', active: true)
    get edit_category_url(@category)
    assert_response :success
  end

  test 'should update category' do
    patch category_url(@category), params: { category: { active: @category.active, name: @category.name } }
    assert_redirected_to category_url(@category)
  end

  test "should destroy category" do
    assert_difference("Category.count", -1) do
      delete category_url(@category)
    end

    assert_redirected_to categories_url
  end
end
