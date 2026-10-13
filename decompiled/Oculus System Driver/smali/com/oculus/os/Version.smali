.class public Lcom/oculus/os/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final CURRENT_SDK_VERSION:I = 0x0

.field public static final RELEASE_3_51:I = 0x0

.field public static final RELEASE_3_53:I = 0x1

.field public static final VERSION_0:I = 0x0

.field public static final VERSION_1:I = 0x1

.field public static final VERSION_2:I = 0x2

.field public static final VERSION_3:I = 0x3

.field public static final VERSION_4:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
