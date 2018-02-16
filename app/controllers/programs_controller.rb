class ProgramsController < ApplicationController
    before_action :set_program, only: [:show, :edit, :update, :destroy]

    def index
        @programs = Program.all
    end

    def new
        @program = Program.new
    end

    def create
        @program = Program.new(program_params)

        if @program.save
            flash[:alert] = "Success"
            redirect_to program_path(@program)
        else
            flash[:alert] = "Success"
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @program.update
            flash[:alert] = "Success"
            redirect_to program_path(@program)
        else
            flash[:alert] = "Success"
            render 'edit'
        end
    end

    def destroy
        @program.destroy
        flash[:alert] = "Success"
        redirect_to root_path
    end

    private

    def program_params
        params.require(:program).permit(:name, :total_spots)
    end

    def set_program
        @program = Program.find(params[:id])
    end
end