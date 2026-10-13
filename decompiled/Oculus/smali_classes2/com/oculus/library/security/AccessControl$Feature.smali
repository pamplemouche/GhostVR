.class public final enum Lcom/oculus/library/security/AccessControl$Feature;
.super Ljava/lang/Enum;
.source "AccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/security/AccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/security/AccessControl$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/security/AccessControl$Feature;

.field public static final enum APP_ACTION_CUSTOM_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

.field public static final enum APP_ACTION_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

.field public static final enum APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

.field public static final enum APP_DATA_MODIFY:Lcom/oculus/library/security/AccessControl$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "APP_DATA_INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/security/AccessControl$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

    .line 13
    new-instance v0, Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "APP_DATA_MODIFY"

    invoke-direct {v0, v1, v3}, Lcom/oculus/library/security/AccessControl$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_MODIFY:Lcom/oculus/library/security/AccessControl$Feature;

    .line 15
    new-instance v0, Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "APP_ACTION_INSTALL"

    invoke-direct {v0, v1, v4}, Lcom/oculus/library/security/AccessControl$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    .line 16
    new-instance v0, Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "APP_ACTION_CUSTOM_INSTALL"

    invoke-direct {v0, v1, v5}, Lcom/oculus/library/security/AccessControl$Feature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_CUSTOM_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/library/security/AccessControl$Feature;

    sget-object v1, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_MODIFY:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_CUSTOM_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/library/security/AccessControl$Feature;->$VALUES:[Lcom/oculus/library/security/AccessControl$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Feature;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/oculus/library/security/AccessControl$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/security/AccessControl$Feature;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/security/AccessControl$Feature;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->$VALUES:[Lcom/oculus/library/security/AccessControl$Feature;

    invoke-virtual {v0}, [Lcom/oculus/library/security/AccessControl$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/security/AccessControl$Feature;

    return-object v0
.end method
