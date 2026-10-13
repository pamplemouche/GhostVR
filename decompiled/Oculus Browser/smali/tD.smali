.class public LtD;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LYC;


# static fields
.field public static final c:LZB;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:LlD;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AndroidNetworkChannel"

    .line 1
    invoke-static {v0}, LgC;->b(Ljava/lang/String;)LgC;

    move-result-object v0

    sput-object v0, LtD;->c:LZB;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, LtD;->a:Landroid/content/Context;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method


# virtual methods
.method public a(LfC;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, LlD;

    iput-object p1, p0, LtD;->b:LlD;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
