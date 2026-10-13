.class public final Lbl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:LJs;


# instance fields
.field public final a:Lml;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "DiscoveryManager"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbl;->b:LJs;

    return-void
.end method

.method public constructor <init>(Lml;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbl;->a:Lml;

    return-void
.end method
