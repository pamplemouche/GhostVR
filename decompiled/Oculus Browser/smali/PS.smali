.class public abstract LPS;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LQS;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LQS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQS;-><init>(LOS;)V

    sput-object v0, LPS;->a:LQS;

    return-void
.end method
