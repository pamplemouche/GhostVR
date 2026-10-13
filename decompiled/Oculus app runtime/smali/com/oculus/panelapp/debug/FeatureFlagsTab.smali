.class public Lcom/oculus/panelapp/debug/FeatureFlagsTab;
.super Landroid/widget/LinearLayout;
.source "FeatureFlagsTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;,
        Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterEditText;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

.field private mContext:Landroid/content/Context;

.field private mFilterClearButton:Landroid/widget/Button;

.field private mFilterEditText:Landroid/widget/EditText;

.field private final mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/SettingsIPC$Setting;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mContext:Landroid/content/Context;

    .line 54
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mTimer:Ljava/util/Timer;

    .line 55
    new-instance p1, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    invoke-direct {p1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mAdapter:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mSettings:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/debug/FeatureFlagsTab;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mFilterEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/debug/FeatureFlagsTab;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mSettings:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/debug/FeatureFlagsTab;)Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mAdapter:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/debug/FeatureFlagsTab;Ljava/lang/Runnable;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 116
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 127
    sget-object v0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Filter changed to \"%s\""

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;

    invoke-direct {v0, p0, v1}, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsTab;Lcom/oculus/panelapp/debug/FeatureFlagsTab$1;)V

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;->run()V

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;

    invoke-direct {v0, p0, v1}, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsTab;Lcom/oculus/panelapp/debug/FeatureFlagsTab$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 3

    .line 61
    check-cast p1, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    .line 63
    sget v0, Lcom/oculus/panelapp/debug/R$id;->debug_tab_feature_flags:I

    const-string v1, "feature_flag"

    const-string v2, "Feature Flags"

    invoke-virtual {p2, v1, v2, v0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget p2, Lcom/oculus/panelapp/debug/R$id;->debug_feature_flag_list:I

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 66
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mSettings:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->getSettingsIPC()Lcom/oculus/panelapp/debug/SettingsIPC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/SettingsIPC;->listSettings()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 69
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mAdapter:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mSettings:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->setItems(Ljava/util/Map;)V

    .line 70
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mAdapter:Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 72
    sget p1, Lcom/oculus/panelapp/debug/R$id;->feature_flag_filter_edittext:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mFilterEditText:Landroid/widget/EditText;

    .line 73
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mFilterEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    sget p1, Lcom/oculus/panelapp/debug/R$id;->feature_flag_filter_clear:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mFilterClearButton:Landroid/widget/Button;

    .line 76
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mFilterClearButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->mFilterEditText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
