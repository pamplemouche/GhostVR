.class public final enum LSC;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum w:LSC;

.field public static final enum x:LSC;

.field public static final enum y:LSC;

.field public static final synthetic z:[LSC;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LSC;

    const/4 v1, 0x0

    const-string v2, "ACKNOWLEDGE"

    invoke-direct {v0, v2, v1}, LSC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LSC;->w:LSC;

    .line 2
    new-instance v0, LSC;

    const/4 v2, 0x1

    const-string v3, "REGISTRATION"

    invoke-direct {v0, v3, v2}, LSC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LSC;->x:LSC;

    .line 3
    new-instance v0, LSC;

    const/4 v3, 0x2

    const-string v4, "UNREGISTRATION"

    invoke-direct {v0, v4, v3}, LSC;-><init>(Ljava/lang/String;I)V

    sput-object v0, LSC;->y:LSC;

    const/4 v4, 0x3

    new-array v4, v4, [LSC;

    .line 4
    sget-object v5, LSC;->w:LSC;

    aput-object v5, v4, v1

    sget-object v1, LSC;->x:LSC;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, LSC;->z:[LSC;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[LSC;
    .locals 1

    .line 1
    sget-object v0, LSC;->z:[LSC;

    invoke-virtual {v0}, [LSC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LSC;

    return-object v0
.end method
