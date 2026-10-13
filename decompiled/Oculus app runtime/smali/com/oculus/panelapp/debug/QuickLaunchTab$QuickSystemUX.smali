.class Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickSystemUX;
.super Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
.source "QuickLaunchTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/QuickLaunchTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuickSystemUX"
.end annotation


# instance fields
.field private final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;-><init>(Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickSystemUX;->mUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;)I
    .locals 2
    .param p1    # Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickSystemUX;->getLabel()Ljava/lang/String;

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

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    check-cast p1, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickSystemUX;->compareTo(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;)I

    move-result p1

    return p1
.end method

.method public getLaunchString()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickSystemUX;->mUri:Ljava/lang/String;

    return-object v0
.end method
