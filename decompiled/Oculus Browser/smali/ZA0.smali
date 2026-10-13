.class public LZA0;
.super Landroid/app/DialogFragment;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LZA0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic a()V
    .locals 3

    .line 1
    new-instance v0, LiJ0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LiJ0;-><init>(Z)V

    const-string v1, "https://myactivity.google.com/myactivity/?utm_source=chrome_n"

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v1, v2}, LiJ0;->launchUrl(Ljava/lang/String;I)Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method

.method public static b()Z
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "org.chromium.chrome.browser.preferences.privacy.PREF_OTHER_FORMS_OF_HISTORY_DIALOG_SHOWN"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    const/4 p1, 0x1

    .line 2
    sget-object p2, LyT;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "org.chromium.chrome.browser.preferences.privacy.PREF_OTHER_FORMS_OF_HISTORY_DIALOG_SHOWN"

    .line 4
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e013e

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b047a

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [LWe1;

    new-instance v3, LWe1;

    new-instance v4, LVe1;

    .line 6
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, LYA0;->a:Lorg/chromium/base/Callback;

    invoke-direct {v4, v5, v6}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    const-string v5, "<link>"

    const-string v6, "</link>"

    invoke-direct {v3, v5, v6, v4}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 7
    invoke-static {v1, v2}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 10
    new-instance v0, LO8;

    .line 11
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f140245

    invoke-direct {v0, v1, v2}, LO8;-><init>(Landroid/content/Context;I)V

    .line 12
    iget-object v1, v0, LO8;->a:LK8;

    iput-object p1, v1, LK8;->u:Landroid/view/View;

    .line 13
    iput v4, v1, LK8;->t:I

    .line 14
    iput-boolean v4, v1, LK8;->v:Z

    const p1, 0x7f1301e8

    .line 15
    invoke-virtual {v0, p1}, LO8;->b(I)LO8;

    const p1, 0x7f130444

    .line 16
    invoke-virtual {v0, p1, p0}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 17
    invoke-virtual {v0}, LO8;->a()LP8;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method
