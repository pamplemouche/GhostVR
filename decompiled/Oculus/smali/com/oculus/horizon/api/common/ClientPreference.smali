.class public Lcom/oculus/horizon/api/common/ClientPreference;
.super Ljava/lang/Object;
.source "ClientPreference.java"


# instance fields
.field public final type:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/oculus/horizon/api/common/ClientPreference;->type:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/oculus/horizon/api/common/ClientPreference;->value:Ljava/lang/String;

    .line 12
    return-void
.end method
