import '../../utils/utils.dart';

final String titleOnboard1 = 'Organize sua vida';
final String descriptionOnboard1 =
    'Agora você pode organizar suas tarefas de uma forma mais rapida e tranquila '
    'comece seu dia na suas mãos de uma forma mais prática.';
final String pathImageOnboard1 = 'lib/assets/onboard/onboard_1.png';
final String buttonOnboard1 = 'Começar';


final kCreateTableQuery = 'CREATE TABLE IF NOT EXISTS $kDatabaseName ($taskIdTable INTEGER PRIMARY KEY, $taskTitleTable TEXT,$taskDescriptionTable TEXT,$taskDoneTable INTEGER(1),$taskCreatedAtTable TEXT,$taskUpdatedAtTable TEXT)';
