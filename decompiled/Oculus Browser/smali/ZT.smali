.class public final synthetic LZT;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final a:Ljava/util/concurrent/Callable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LZT;

    invoke-direct {v0}, LZT;-><init>()V

    sput-object v0, LZT;->a:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/PathUtils;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
