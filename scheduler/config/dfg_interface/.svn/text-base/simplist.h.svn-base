/* 
 * File: simplist.h
 * A simple C++ list Class Header
 */

#ifndef _SIMPLIST_H_
#define _SIMPLIST_H_

#include <string>
using namespace std;

class VNode;
class SimpleListNode;
class SimpleList;

class VNode {
public:
	string name;
	int num;
	char type;
	SimpleList* pred;
	SimpleList* succ;
	VNode(const char c, int n);
	~VNode();
};

class SimpleListNode {
public:
	SimpleListNode(VNode* node);
	~SimpleListNode();
	SimpleListNode* next;
	VNode* vnode;
};

class SimpleList {
private:
	SimpleListNode* tail;
public:
	int len;
	SimpleListNode* head;
	SimpleList(); // constructor
	~SimpleList();
	void append(VNode* node);
};

#endif
