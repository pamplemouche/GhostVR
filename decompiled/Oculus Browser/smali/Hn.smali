.class public final LHn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbp;


# instance fields
.field public final synthetic a:LGn;


# direct methods
.method public constructor <init>(LGn;)V
    .locals 0

    iput-object p1, p0, LHn;->a:LGn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, LHn;->a:LGn;

    invoke-virtual {v0}, LGn;->d()Z

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
