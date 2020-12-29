class HomeController < ApplicationController
  def index
  end

  def about
  end

  def table1
    respond_to do |format|
      format.html do
        render partial: 'home/table1', 
               locals: { table1_data: get_data1 },
               layout: false
      end

      format.json do
        render json: table1_data
      end
    end
  end

  def table2
    respond_to do |format|
      format.html do
        render partial: 'home/table2', 
               locals: { table2_data: get_data2 },
               layout: false
      end

      format.json do
        render json: table2_data
      end
    end
  end

  def get_data1
    sleep 5
    [%w[Kay Ray kayray], %w[John Jake jake]]
  end

  def get_data2
    sleep 2
    [%w[Miana Robes mrobes], %w[Saj Piera piera]]
  end
end
