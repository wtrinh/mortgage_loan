module ApplicationHelper
	def get_tab_url(tab_name)
		return root_path if current_mortgage.nil?
		borrower = current_mortgage.borrowers.first
		details = current_mortgage.detail
		case tab_name
			when 'mortgages'
				mortgages_path
			when 'mortgage_info'
				edit_mortgage_path current_mortgage
			when 'borrowers'
				borrower.present? ? edit_borrower_path(borrower) : new_borrower_path
			when 'employments'
				if borrower.present? && borrower.employment.present?
					borrower_employment_path borrower, borrower.employment
				elsif borrower.present? && borrower.employment.nil?
					new_borrower_employment_path borrower
				else
					new_borrower_path	
				end		
			when 'income_expenses'
				if borrower.present? && borrower.income_expense.present?
					borrower_income_expense_path borrower, borrower.income_expense
				elsif borrower.present? && borrower.income_expense.nil?
					new_borrower_income_expense_path borrower
				else
					new_borrower_path	
				end		
			when 'assets_liabilities'
				borrower.present? ? borrower_assets_liabilities_path(borrower) : new_borrower_path			
			when 'details_of_transaction'
				details.present? ? edit_mortgage_detail_path(current_mortgage, details) : new_mortgage_detail_path(current_mortgage)
			else
				if borrower.present? && borrower.declaration.present?
					edit_borrower_declaration_path borrower, borrower.declaration
				elsif borrower.present? && borrower.declaration.nil?
					new_borrower_declaration_path borrower
				else	 	 		 
					new_borrower_path
				end	
		end
	end
end
