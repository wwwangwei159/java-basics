package sy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sy.dao.MessageLeaveMapper;
import sy.dao.UserMapper;
import sy.model.MessageLeave;
import sy.model.User;


@Service("messageService")
public class MessageLeaveServiceImpl implements MessageLeaveService {

	
	private MessageLeaveMapper messageLeaveMapper;
	
	public MessageLeaveMapper getMessageLeaveMapper() {
		return messageLeaveMapper;
	}
	
	@Autowired
	public void setMessageLeaveMapper(MessageLeaveMapper messageLeaveMapper) {
		this.messageLeaveMapper = messageLeaveMapper;
	}

	public MessageLeave getMessageId(String messId) {
		// TODO Auto-generated method stub
		return messageLeaveMapper.selectByPrimaryKey(messId);
	}

	public int insert(MessageLeave record) {
		// TODO Auto-generated method stub
		return messageLeaveMapper.insert(record);
	}

	public List<MessageLeave> getMessage(MessageLeave record) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
