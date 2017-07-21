class StaticController < ApplicationController
	def homepage
		if admin_types.include?(current_user.type)
			@pending_approvals = Post.submitted
			@recent_audit_items = AuditLog.last(10)
		else
			@pending_audit_confimations = current_user.audit_logs.pending
		end
	end
endhttp://localhost:3000/audit_logs/2/confirm