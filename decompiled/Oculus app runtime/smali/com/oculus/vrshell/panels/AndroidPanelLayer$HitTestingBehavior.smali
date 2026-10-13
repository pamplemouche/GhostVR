.class public final enum Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;
.super Ljava/lang/Enum;
.source "AndroidPanelLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panels/AndroidPanelLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HitTestingBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

.field public static final enum HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

.field public static final enum NOT_HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 83
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/4 v1, 0x0

    const-string v2, "HIT_TESTABLE"

    invoke-direct {v0, v2, v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    .line 86
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/4 v2, 0x1

    const-string v3, "NOT_HIT_TESTABLE"

    invoke-direct {v0, v3, v2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->NOT_HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/4 v0, 0x2

    .line 80
    new-array v0, v0, [Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v3, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    aput-object v3, v0, v1

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->NOT_HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->$VALUES:[Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;
    .locals 1

    .line 80
    const-class v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;
    .locals 1

    .line 80
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->$VALUES:[Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    return-object v0
.end method
