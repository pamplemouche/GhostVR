.class public Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallMode;
.super Ljava/lang/Object;
.source "InstallParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallMode"
.end annotation


# static fields
.field public static final FULL_INSTALL:I = 0x1000

.field public static final INHERIT_EXISTING:I = 0x2000

.field static final PROTOCOL_TO_NATIVE_MAP:Lcom/google/common/collect/ImmutableBiMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 89
    const/16 v0, 0x1000

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2000

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 90
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallMode;->PROTOCOL_TO_NATIVE_MAP:Lcom/google/common/collect/ImmutableBiMap;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams$InstallMode;

    invoke-static {v0, p0}, Lcom/facebook/oxygen/preloads/sdk/installer/contract/request/InstallParams;->access$000(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
