.class Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;
.super Ljava/util/TimerTask;
.source "FeatureFlagsTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/FeatureFlagsTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/FeatureFlagsTab;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/debug/FeatureFlagsTab;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;->this$0:Lcom/oculus/panelapp/debug/FeatureFlagsTab;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/debug/FeatureFlagsTab;Lcom/oculus/panelapp/debug/FeatureFlagsTab$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsTab;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 86
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;->this$0:Lcom/oculus/panelapp/debug/FeatureFlagsTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->access$000(Lcom/oculus/panelapp/debug/FeatureFlagsTab;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->access$100()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Filtering to \"%s\""

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    iget-object v2, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;->this$0:Lcom/oculus/panelapp/debug/FeatureFlagsTab;

    invoke-static {v2}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->access$200(Lcom/oculus/panelapp/debug/FeatureFlagsTab;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;

    .line 94
    invoke-virtual {v6}, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 100
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;->this$0:Lcom/oculus/panelapp/debug/FeatureFlagsTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->access$300(Lcom/oculus/panelapp/debug/FeatureFlagsTab;)Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/debug/FeatureFlagsListAdapter;->setItems(Ljava/util/Map;)V

    .line 105
    iget-object v0, p0, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;->this$0:Lcom/oculus/panelapp/debug/FeatureFlagsTab;

    new-instance v1, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask$1;-><init>(Lcom/oculus/panelapp/debug/FeatureFlagsTab$FilterTimerTask;)V

    invoke-static {v0, v1}, Lcom/oculus/panelapp/debug/FeatureFlagsTab;->access$400(Lcom/oculus/panelapp/debug/FeatureFlagsTab;Ljava/lang/Runnable;)V

    return-void
.end method
