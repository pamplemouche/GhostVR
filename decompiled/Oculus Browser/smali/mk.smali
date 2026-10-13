.class public final Lmk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lik;


# instance fields
.field public final w:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmk;->w:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lmk;->w:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
