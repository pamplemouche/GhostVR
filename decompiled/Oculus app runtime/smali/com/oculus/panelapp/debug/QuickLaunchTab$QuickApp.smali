.class Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;
.super Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
.source "QuickLaunchTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/QuickLaunchTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuickApp"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;)I
    .locals 2
    .param p1    # Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;->getLabel()Ljava/lang/String;

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

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    check-cast p1, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;->compareTo(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;)I

    move-result p1

    return p1
.end method

.method public getLaunchString()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
