goal:-write('������� ��� ����� : '),read(F1),exists_file(F1),open(F1,read,S1),
      write('������� ��� ������ ����� : '),read(F2),open(F2,write,S2),
      write('������� ������ : '), read(F),
      repeat,
             read_line_to_codes(S1,C),atom_chars(S,C),�����(S2,S,F),
      at_end_of_stream(S1),
      close(S1), close(S2),!.

�����(S2,S,F):-sub_string(S,_,_,_,F),!,write(S2,S),nl(S2).
�����(_,_,_).

