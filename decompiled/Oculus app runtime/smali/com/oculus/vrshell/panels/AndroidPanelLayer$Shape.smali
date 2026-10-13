.class public final enum Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;
.super Ljava/lang/Enum;
.source "AndroidPanelLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panels/AndroidPanelLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

.field public static final enum Equirect180:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

.field public static final enum Equirect360:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

.field public static final enum Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

.field public static final enum Hidden:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

.field public static final enum LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

.field public static final enum PortraitCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

.field public static final enum Screen:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 55
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    const/4 v1, 0x0

    const-string v2, "Hidden"

    invoke-direct {v0, v2, v1, v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Hidden:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    .line 56
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    const/4 v2, 0x1

    const-string v3, "Flat"

    invoke-direct {v0, v3, v2, v2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    .line 57
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    const/4 v3, 0x2

    const-string v4, "LandscapeCylinder"

    invoke-direct {v0, v4, v3, v3}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    .line 58
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    const/4 v4, 0x3

    const-string v5, "PortraitCylinder"

    invoke-direct {v0, v5, v4, v4}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->PortraitCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    .line 59
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    const/4 v5, 0x4

    const-string v6, "Equirect360"

    const/16 v7, 0xc

    invoke-direct {v0, v6, v5, v7}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Equirect360:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    .line 60
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    const/4 v6, 0x5

    const-string v7, "Equirect180"

    const/16 v8, 0xd

    invoke-direct {v0, v7, v6, v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Equirect180:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    .line 61
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    const/4 v7, 0x6

    const-string v8, "Screen"

    const/16 v9, 0xe

    invoke-direct {v0, v8, v7, v9}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Screen:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    const/4 v0, 0x7

    .line 54
    new-array v0, v0, [Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Hidden:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    aput-object v8, v0, v1

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->PortraitCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Equirect360:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Equirect180:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Screen:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->$VALUES:[Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;
    .locals 1

    .line 54
    const-class v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;
    .locals 1

    .line 54
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->$VALUES:[Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    return-object v0
.end method
