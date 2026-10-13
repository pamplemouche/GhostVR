.class public final synthetic LBI0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LCI0;

.field public final x:Ljava/util/List;


# direct methods
.method public constructor <init>(LCI0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBI0;->w:LCI0;

    iput-object p2, p0, LBI0;->x:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LBI0;->w:LCI0;

    iget-object v1, p0, LBI0;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v3, v0, LCI0;->c:LDI0;

    invoke-virtual {v3, v2}, LDI0;->onTabRegistered(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method
