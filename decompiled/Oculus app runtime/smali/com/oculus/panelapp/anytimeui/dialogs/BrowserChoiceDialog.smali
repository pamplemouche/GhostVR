.class public Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "BrowserChoiceDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsUpdate:Z

.field private mOkButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->TAG:Ljava/lang/String;

    const-string p2, "BrowserChoiceDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->mIsUpdate:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->wrapResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;)Landroid/widget/Button;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->mOkButton:Landroid/widget/Button;

    return-object p0
.end method

.method private wrapResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->mIsUpdate:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 2

    .line 88
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iput-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->mIsUpdate:Z

    .line 95
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->browser_choice_dialog_button_ok_update:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 5

    .line 29
    new-instance v0, Lcom/oculus/vrshell/timer/SimpleTimer;

    const-string v1, "profile_prefs_query"

    invoke-direct {v0, v1}, Lcom/oculus/vrshell/timer/SimpleTimer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oculus/vrshell/timer/SimpleTimer;->start()Lcom/oculus/vrshell/timer/SimpleTimer;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/vrshell/util/HorizonUtil;->getProfilePrefsMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "default_browser"

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "has_seen_internet_browser_prompt"

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 35
    sget-object v3, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/oculus/vrshell/timer/SimpleTimer;->finishWithLogV(Ljava/lang/String;)J

    .line 37
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->browser_choice_options:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 39
    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->browser_choice_dialog_button_ok:I

    invoke-virtual {p0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->mOkButton:Landroid/widget/Button;

    .line 40
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->mOkButton:Landroid/widget/Button;

    new-instance v4, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;Landroid/widget/RadioGroup;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v3, Lcom/oculus/panelapp/anytimeui/R$id;->browser_choice_dialog_button_cancel:I

    invoke-virtual {p0, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 56
    new-instance v4, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$2;

    invoke-direct {v4, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$2;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v3, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$3;

    invoke-direct {v3, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$3;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    if-eqz v1, :cond_1

    .line 78
    sget-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->DEFAULT_BROWSER_OCULUS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->browser_choice_option_oculus:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 80
    :cond_0
    sget-object v1, Lcom/oculus/vrshell/util/HorizonUtil;->DEFAULT_BROWSER_SAMSUNG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->browser_choice_option_samsung:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackButton()Z
    .locals 3

    .line 101
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Back Pressed, isUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->mIsUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "cancel"

    invoke-direct {p0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->wrapResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
