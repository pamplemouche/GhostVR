.class public LRU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field public final synthetic w:LSU;


# direct methods
.method public constructor <init>(LSU;)V
    .locals 0

    .line 1
    iput-object p1, p0, LRU;->w:LSU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 1
    iget-object v0, p0, LRU;->w:LSU;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LSU;->a(I)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-static {p1}, LSU;->c(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LRU;->w:LSU;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, LSU;->a(I)V

    :cond_0
    return-void
.end method
