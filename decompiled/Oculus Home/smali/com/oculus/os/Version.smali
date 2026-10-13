.class public Lcom/oculus/os/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static final CURRENT_SDK_VERSION:I

.field public static final RELEASE_3_51:I = 0x0

.field public static final RELEASE_3_53:I = 0x1

.field public static final VERSION_0:I = 0x0

.field public static final VERSION_1:I = 0x1

.field public static final VERSION_10:I = 0xa

.field public static final VERSION_11:I = 0xb

.field public static final VERSION_12:I = 0xc

.field public static final VERSION_13:I = 0xd

.field public static final VERSION_14:I = 0xe

.field public static final VERSION_15:I = 0xf

.field public static final VERSION_16:I = 0x10

.field public static final VERSION_17:I = 0x11

.field public static final VERSION_18:I = 0x12

.field public static final VERSION_19:I = 0x13

.field public static final VERSION_2:I = 0x2

.field public static final VERSION_3:I = 0x3

.field public static final VERSION_4:I = 0x4

.field public static final VERSION_5:I = 0x5

.field public static final VERSION_6:I = 0x6

.field public static final VERSION_7:I = 0x7

.field public static final VERSION_8:I = 0x8

.field public static final VERSION_9:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
