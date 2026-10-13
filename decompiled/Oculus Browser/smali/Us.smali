.class public final LUs;
.super LWj;
.source "PG"


# instance fields
.field public final d:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final e:Ldt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ldt;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p2, Lcom/google/android/gms/cast/framework/CastOptions;->w:Ljava/lang/String;

    .line 3
    invoke-static {v0}, LEj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/cast/framework/CastOptions;->w:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->r()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    const-string v2, "com.google.android.gms.cast.CATEGORY_CAST"

    .line 6
    invoke-static {v2, v0, v1}, LEj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    invoke-direct {p0, p1, v0}, LWj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iput-object p2, p0, LUs;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 9
    iput-object p3, p0, LUs;->e:Ldt;

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "namespaces cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "applicationId cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
