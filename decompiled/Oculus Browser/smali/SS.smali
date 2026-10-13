.class public abstract LSS;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LTS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LTS;

    .line 2
    sget-object v1, LJS;->a:LKS;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, LTS;-><init>(LKS;LRS;)V

    sput-object v0, LSS;->a:LTS;

    return-void
.end method
