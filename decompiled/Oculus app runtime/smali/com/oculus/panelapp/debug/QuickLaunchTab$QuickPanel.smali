.class Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;
.super Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
.source "QuickLaunchTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/QuickLaunchTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuickPanel"
.end annotation


# instance fields
.field private final mComponentName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const-string p1, "%s (/%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;-><init>(Ljava/lang/String;)V

    .line 98
    iput-object p2, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;->mPackageName:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;->mComponentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;)I
    .locals 2
    .param p1    # Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    check-cast p1, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;->compareTo(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;)I

    move-result p1

    return p1
.end method

.method public getLaunchString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
