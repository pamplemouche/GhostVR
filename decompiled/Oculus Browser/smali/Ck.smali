.class public final LCk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LPs;


# instance fields
.field public final synthetic a:Llk;


# direct methods
.method public constructor <init>(Llk;Lok;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCk;->a:Llk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, LCk;->a:Llk;

    iget-object p2, p0, LCk;->a:Llk;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x837

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, LDk;

    invoke-direct {p2, v0}, LDk;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(LLm;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "RemoteMediaClient"

    const-string v0, "Result already set when calling onRequestReplaced"

    .line 5
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(JILjava/lang/Object;)V
    .locals 3

    .line 6
    instance-of p1, p4, Lorg/json/JSONObject;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 7
    move-object p1, p4

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 8
    :goto_0
    :try_start_0
    iget-object p4, p0, LCk;->a:Llk;

    new-instance v0, Lmk;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2, p3, p2, p2}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 10
    invoke-direct {v0, v1, p1}, Lmk;-><init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V

    invoke-virtual {p4, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(LLm;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "RemoteMediaClient"

    const-string p3, "Result already set when calling onRequestCompleted"

    .line 11
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
