.class public final Lcom/oculus/vrshell/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;
    }
.end annotation


# static fields
.field private static final GEARVR_END:I = 0x3f

.field private static final GEARVR_START:I = 0x0

.field private static final GO_END:I = 0x7f

.field private static final GO_START:I = 0x40

.field private static final QUEST_END:I = 0x13f

.field private static final QUEST_START:I = 0x100


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceType(I)Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    .line 17
    sget-object p0, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->GEARVR:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    return-object p0

    :cond_0
    const/16 v0, 0x40

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_1

    .line 19
    sget-object p0, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->GO:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    return-object p0

    :cond_1
    const/16 v0, 0x100

    if-lt p0, v0, :cond_2

    const/16 v0, 0x13f

    if-gt p0, v0, :cond_2

    .line 21
    sget-object p0, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    return-object p0

    .line 23
    :cond_2
    sget-object p0, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->UNKNOWN:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    return-object p0
.end method
