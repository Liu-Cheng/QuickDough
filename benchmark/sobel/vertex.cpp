#include "vertex.h"

Vertex::Vertex(int _idx, Opcode _op, VertexType _type){

    valid = true;
    idx = _idx;
    type = _type;
    op = _op;

    for(int i = 0; i < MAX_IN_DEG; i++){
        inNgb[i] = -1;
    }

}

Vertex::Vertex(bool _valid){
    valid = _valid;
    idx = 0;
    type = IN;
    op = MULADD;

    for(int i = 0; i < MAX_IN_DEG; i++){
        inNgb[i] = -1;
    }
}

void Vertex::compute(const std::vector<Vertex*> &vertices){
    switch(op){
        case MULADD:
            val = vertices[inNgb[0]]->val * vertices[inNgb[1]]->val + vertices[inNgb[2]]->val;
            break;

        case MULSUB:
            val = vertices[inNgb[0]]->val * vertices[inNgb[1]]->val - vertices[inNgb[2]]->val;
            break;

        case ADD:
            val = vertices[inNgb[0]]->val + vertices[inNgb[1]]->val;
            break;

        case SUB:
            val = vertices[inNgb[0]]->val - vertices[inNgb[1]]->val;
            break;

        case PHI:
            val = (vertices[inNgb[0]]->val != 0)? vertices[inNgb[1]]->val : vertices[inNgb[2]]->val;
            break;

        case MUL:
            val = vertices[inNgb[0]]->val * vertices[inNgb[1]]->val;
            break;

        case ABS:
            val = abs(vertices[inNgb[0]]->val);
            break;

        case GT:
            val = (vertices[inNgb[0]]->val > vertices[inNgb[1]]->val) ? 1 : 0;
            break;

        case LET:
            val = (vertices[inNgb[0]]->val <= vertices[inNgb[1]]->val) ? 1 : 0;
            break;

        default:
            HERE;
            std::cout << " Opcode is not recognized." << std::endl;
            exit(EXIT_FAILURE);
    }
}



