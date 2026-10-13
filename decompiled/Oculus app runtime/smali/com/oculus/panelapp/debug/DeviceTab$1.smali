.class Lcom/oculus/panelapp/debug/DeviceTab$1;
.super Ljava/lang/Object;
.source "DeviceTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/DeviceTab;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/DeviceTab;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/DeviceTab;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/oculus/panelapp/debug/DeviceTab$1;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-static {}, Lcom/oculus/panelapp/debug/DeviceTab;->access$000()[Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 125
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/oculus/panelapp/debug/DeviceTab;->access$100()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 129
    iget-object v5, p0, Lcom/oculus/panelapp/debug/DeviceTab$1;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-virtual {v5}, Lcom/oculus/panelapp/debug/DeviceTab;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v5, v6, v4, v0}, Lcom/oculus/panelapp/debug/DeviceTab;->access$200(Lcom/oculus/panelapp/debug/DeviceTab;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/oculus/panelapp/debug/DeviceTab$1;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {v1, v0}, Lcom/oculus/panelapp/debug/DeviceTab;->access$300(Lcom/oculus/panelapp/debug/DeviceTab;Ljava/util/List;)V

    .line 133
    iget-object v1, p0, Lcom/oculus/panelapp/debug/DeviceTab$1;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {v1}, Lcom/oculus/panelapp/debug/DeviceTab;->access$400(Lcom/oculus/panelapp/debug/DeviceTab;)Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->isGuardianAware()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/oculus/panelapp/debug/DeviceTab$1;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {v1, v0}, Lcom/oculus/panelapp/debug/DeviceTab;->access$500(Lcom/oculus/panelapp/debug/DeviceTab;Ljava/util/List;)V

    .line 137
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 138
    iget-object v1, p0, Lcom/oculus/panelapp/debug/DeviceTab$1;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {v1}, Lcom/oculus/panelapp/debug/DeviceTab;->access$600(Lcom/oculus/panelapp/debug/DeviceTab;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 139
    iget-object v1, p0, Lcom/oculus/panelapp/debug/DeviceTab$1;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {v1}, Lcom/oculus/panelapp/debug/DeviceTab;->access$600(Lcom/oculus/panelapp/debug/DeviceTab;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Lcom/oculus/panelapp/debug/DeviceTab$1;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/DeviceTab;->access$700(Lcom/oculus/panelapp/debug/DeviceTab;)Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
