.class public abstract LJS;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LKS;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LKS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LKS;-><init>(LIS;)V

    sput-object v0, LJS;->a:LKS;

    return-void
.end method
