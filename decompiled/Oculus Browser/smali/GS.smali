.class public LGS;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Ljava/lang/Runnable;

.field public final synthetic x:LHS;


# direct methods
.method public constructor <init>(LHS;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LGS;->x:LHS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LGS;->w:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LGS;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object v0, p0, LGS;->x:LHS;

    .line 3
    invoke-virtual {v0}, LHS;->a()V

    return-void
.end method
