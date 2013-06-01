/* 
 * File: simplist.cpp
 * A simple C++ list Class
 */

#include "simplist.h"
#include <sstream>

VNode::VNode(const char c, int n)
{
	ostringstream namestr;
	namestr << c << num;
	num = n;
	type = c;
	name = namestr.str();
	pred = new SimpleList();
	succ = new SimpleList();
}

VNode::~VNode()
{
	delete pred;
	delete succ;
}

SimpleListNode::SimpleListNode(VNode* node)
{
	vnode = node;
	next = NULL;
}

SimpleListNode::~SimpleListNode() {}


SimpleList::SimpleList()
{
	head = NULL;
	tail = NULL;
	len = 0;
}

SimpleList::~SimpleList()
{
	SimpleListNode *ptr, *pptr;
	ptr = head;
	while (ptr->next) {
		pptr = ptr;
		ptr = ptr->next;
		delete pptr;
	}
}
void SimpleList::append(VNode* vnode) 
{
	if (tail) {
		tail->next = new SimpleListNode(vnode);
		tail = tail->next;
	} else {
		head = new SimpleListNode(vnode);
		tail = head;
	}
	len += 1;
}
