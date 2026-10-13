.class public final Lcom/oculus/panelapp/debug/UserTab;
.super Landroid/widget/RelativeLayout;
.source "UserTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DebugUserTab"


# instance fields
.field private mEmail:Landroid/widget/EditText;

.field private mEmailTitle:Landroid/widget/TextView;

.field private mLoginStatus:Landroid/widget/TextView;

.field private mLogout:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private final mOVRAuth:Lcom/oculus/authapi/OVRAuth;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordTitle:Landroid/widget/TextView;

.field private mPinCancelButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private mPinTitle:Landroid/widget/TextView;

.field private mSubmit:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private mTwoFacSelectBackButton:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private mTwoFacSelectRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTwoFacSelectTitle:Landroid/widget/TextView;

.field private mVerifyPin:Lcom/oculus/vrshell/panels/views/ShellButton;

.field private pin:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p2, Lcom/oculus/authapi/OVRAuth;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/oculus/panelapp/debug/UserTab$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/debug/UserTab$1;-><init>(Lcom/oculus/panelapp/debug/UserTab;)V

    invoke-direct {p2, p1, v0}, Lcom/oculus/authapi/OVRAuth;-><init>(Landroid/content/Context;Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;)V

    iput-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/panelapp/debug/UserTab;->setTwoFacSelectUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/panelapp/debug/UserTab;->setPinUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/debug/UserTab;)Lcom/oculus/authapi/OVRAuth;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oculus/panelapp/debug/UserTab;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/debug/UserTab;)Landroid/widget/EditText;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oculus/panelapp/debug/UserTab;->mEmail:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/debug/UserTab;)Landroid/widget/EditText;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oculus/panelapp/debug/UserTab;->mPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/debug/UserTab;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/UserTab;->setLoginStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/debug/UserTab;->setLoginUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/panelapp/debug/UserTab;)Landroid/widget/EditText;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oculus/panelapp/debug/UserTab;->pin:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/panelapp/debug/UserTab;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oculus/panelapp/debug/UserTab;->mLoginStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method private dumpTwoFacMethods(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;)V"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpTwoFacMethods called with twoFactorMethods = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugUserTab"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twoFactorMethod id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twoFactorMethod label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twoFactorMethod instructions = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->instructions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twoFactorMethod resendText = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->resendText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twoFactorMethod sendOption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->sendOption:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twoFactorMethod enterCodeOption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->enterCodeOption:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private setLoginStatus()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    new-instance v1, Lcom/oculus/panelapp/debug/UserTab$8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oculus/panelapp/debug/UserTab$8;-><init>(Lcom/oculus/panelapp/debug/UserTab;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/oculus/authapi/OVRAuth;->status(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private setLoginUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 143
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mEmailTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 145
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 146
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mSubmit:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p2, v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 148
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mLogout:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p2, v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 150
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mSubmit:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance v0, Lcom/oculus/panelapp/debug/UserTab$3;

    invoke-direct {v0, p0, p1}, Lcom/oculus/panelapp/debug/UserTab$3;-><init>(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mLogout:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance p2, Lcom/oculus/panelapp/debug/UserTab$4;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/debug/UserTab$4;-><init>(Lcom/oculus/panelapp/debug/UserTab;)V

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mEmailTitle:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mEmail:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mEmail:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 233
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPasswordTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPassword:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 236
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mSubmit:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mSubmit:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/ShellButton;->clearOnClickListener()V

    .line 238
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mLogout:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mLogout:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/ShellButton;->clearOnClickListener()V

    :goto_0
    return-void
.end method

.method private setPinUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 249
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mPinTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->pin:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 251
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mVerifyPin:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p2, v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 252
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mPinCancelButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p2, v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 254
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mVerifyPin:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance v0, Lcom/oculus/panelapp/debug/UserTab$5;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/oculus/panelapp/debug/UserTab$5;-><init>(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mPinCancelButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance p3, Lcom/oculus/panelapp/debug/UserTab$6;

    invoke-direct {p3, p0, p1}, Lcom/oculus/panelapp/debug/UserTab$6;-><init>(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, p3}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPinTitle:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->pin:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->pin:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 298
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mVerifyPin:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 299
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mVerifyPin:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/ShellButton;->clearOnClickListener()V

    .line 300
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPinCancelButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPinCancelButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/ShellButton;->clearOnClickListener()V

    :goto_0
    return-void
.end method

.method private setTwoFacSelectUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/panelapp/debug/ShellDebugPanelApp;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 311
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;

    if-eqz p2, :cond_0

    .line 313
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectBackButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p2, v1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 315
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 316
    invoke-virtual {v0, p3}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 317
    invoke-virtual {v0, p4}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->setNonce(Ljava/lang/String;)V

    .line 319
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectBackButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    new-instance p3, Lcom/oculus/panelapp/debug/UserTab$7;

    invoke-direct {p3, p0, p1}, Lcom/oculus/panelapp/debug/UserTab$7;-><init>(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    invoke-virtual {p2, p3}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectTitle:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectBackButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1, p2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setVisibility(I)V

    .line 330
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectBackButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/views/ShellButton;->clearOnClickListener()V

    .line 331
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 332
    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->setItems(Ljava/util/ArrayList;)V

    .line 333
    invoke-virtual {v0, p4}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;->setNonce(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 5

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    .line 79
    sget v1, Lcom/oculus/panelapp/debug/R$id;->login_status:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mLoginStatus:Landroid/widget/TextView;

    .line 81
    sget v1, Lcom/oculus/panelapp/debug/R$id;->user_email_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mEmailTitle:Landroid/widget/TextView;

    .line 82
    sget v1, Lcom/oculus/panelapp/debug/R$id;->user_email:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mEmail:Landroid/widget/EditText;

    .line 83
    sget v1, Lcom/oculus/panelapp/debug/R$id;->user_password:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPassword:Landroid/widget/EditText;

    .line 84
    sget v1, Lcom/oculus/panelapp/debug/R$id;->user_password_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPasswordTitle:Landroid/widget/TextView;

    .line 85
    sget v1, Lcom/oculus/panelapp/debug/R$id;->submit_login:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mSubmit:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 86
    sget v1, Lcom/oculus/panelapp/debug/R$id;->logout:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mLogout:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 88
    sget v1, Lcom/oculus/panelapp/debug/R$id;->user_pin_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPinTitle:Landroid/widget/TextView;

    .line 89
    sget v1, Lcom/oculus/panelapp/debug/R$id;->user_pin:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->pin:Landroid/widget/EditText;

    .line 90
    sget v1, Lcom/oculus/panelapp/debug/R$id;->verify_login_pin:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mVerifyPin:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 91
    sget v1, Lcom/oculus/panelapp/debug/R$id;->pin_cancel_button:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mPinCancelButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 93
    sget v1, Lcom/oculus/panelapp/debug/R$id;->two_fac_select_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectTitle:Landroid/widget/TextView;

    .line 94
    sget v1, Lcom/oculus/panelapp/debug/R$id;->two_fac_select_back_button:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectBackButton:Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 95
    sget v1, Lcom/oculus/panelapp/debug/R$id;->two_fac_select_list:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 96
    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/UserTab;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 97
    iget-object v1, p0, Lcom/oculus/panelapp/debug/UserTab;->mTwoFacSelectRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;

    new-instance v3, Lcom/oculus/panelapp/debug/UserTab$2;

    invoke-direct {v3, p0, v0}, Lcom/oculus/panelapp/debug/UserTab$2;-><init>(Lcom/oculus/panelapp/debug/UserTab;Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/oculus/panelapp/debug/TwoFacMethodSelectAdapter;-><init>(Lcom/oculus/panelapp/debug/UserTab$TwoFacMethodSelectCallback;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 129
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->isStandaloneVr()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_user:I

    const-string v1, "user"

    const-string v2, "User"

    invoke-virtual {p2, v1, v2, p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/UserTab;->setLoginStatus()V

    const/4 p1, 0x1

    .line 132
    invoke-direct {p0, v0, p1}, Lcom/oculus/panelapp/debug/UserTab;->setLoginUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 133
    invoke-direct {p0, v0, p1, p2, p2}, Lcom/oculus/panelapp/debug/UserTab;->setPinUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v0, p1, p2, p2}, Lcom/oculus/panelapp/debug/UserTab;->setTwoFacSelectUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;ZLjava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_user:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/UserTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
