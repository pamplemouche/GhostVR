.class public Lqw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lqw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqw;-><init>(Z)V

    sput-object v0, Lqw;->a:Lqw;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
