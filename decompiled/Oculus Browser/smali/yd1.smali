.class public final synthetic Lyd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LBd1;

.field public final b:Lle1;


# direct methods
.method public constructor <init>(LBd1;Lle1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyd1;->a:LBd1;

    iput-object p2, p0, Lyd1;->b:Lle1;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lyd1;->a:LBd1;

    iget-object v1, p0, Lyd1;->b:Lle1;

    check-cast p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, LBd1;->a(Lle1;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
