.class public final synthetic LBf1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LGf1;


# direct methods
.method public constructor <init>(LGf1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBf1;->a:LGf1;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LBf1;->a:LGf1;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iget-object p1, v0, LGf1;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, v0, LGf1;->e:I

    if-nez p1, :cond_1

    .line 2
    iget-object p1, v0, LGf1;->d:LCW;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, LCW;->destroy()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, v0, LGf1;->d:LCW;

    :cond_1
    :goto_0
    return-void
.end method
