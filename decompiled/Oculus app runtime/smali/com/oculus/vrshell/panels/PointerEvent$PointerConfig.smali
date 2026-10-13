.class Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;
.super Ljava/lang/Object;
.source "PointerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panels/PointerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointerConfig"
.end annotation


# static fields
.field static final FINGER:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

.field static final MOUSE_SECONDARY_BUTTON:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;


# instance fields
.field private final mButtonState:I

.field private final mSource:I

.field private final mToolType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 136
    new-instance v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;-><init>(III)V

    sput-object v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->FINGER:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    .line 138
    new-instance v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    const/4 v2, 0x3

    const/16 v3, 0x2002

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;-><init>(III)V

    sput-object v0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->MOUSE_SECONDARY_BUTTON:Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->mToolType:I

    .line 148
    iput p2, p0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->mButtonState:I

    .line 149
    iput p3, p0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->mSource:I

    return-void
.end method


# virtual methods
.method public getButtonState()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->mButtonState:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->mSource:I

    return v0
.end method

.method public getToolType()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/oculus/vrshell/panels/PointerEvent$PointerConfig;->mToolType:I

    return v0
.end method
