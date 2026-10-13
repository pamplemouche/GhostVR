.class public LNv0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/List;

.field public static b:LNv0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LNv0;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LNv0;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, LNv0;->b:LNv0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, LNv0;

    invoke-direct {v0}, LNv0;-><init>()V

    sput-object v0, LNv0;->b:LNv0;

    .line 4
    :cond_0
    sget-object v0, LNv0;->b:LNv0;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)V
    .locals 6

    .line 5
    sget-object v0, LNv0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LMv0;

    .line 6
    sget-object v2, LZ01;->a:LFW;

    new-instance v3, LKv0;

    invoke-direct {v3, p0, v1, p1}, LKv0;-><init>(LNv0;LMv0;Lorg/chromium/chrome/browser/autofill/PersonalDataManager$CreditCard;)V

    const-wide/16 v4, 0x0

    .line 7
    invoke-static {v2, v3, v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    return-void
.end method
