# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @portfolios = Portfolio.all
  end

  def about
    @page_title = 'AboutDevkc'
  end

  def contact
    @page_title = 'ContactDevkc'
  end
end
