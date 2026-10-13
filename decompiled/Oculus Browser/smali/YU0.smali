.class public LYU0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:LYU0;


# instance fields
.field public a:I

.field public b:LMU0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LMU0;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, LMU0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LYU0;->b:LMU0;

    return-void
.end method
