.class public LN20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LO20;

.field public final synthetic x:LP20;


# direct methods
.method public constructor <init>(LP20;LO20;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN20;->x:LP20;

    iput-object p2, p0, LN20;->w:LO20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LN20;->x:LP20;

    iget-object v1, p0, LN20;->w:LO20;

    .line 2
    invoke-virtual {v0, v1}, LP20;->c(LO20;)V

    return-void
.end method
