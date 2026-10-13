.class public final Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
.super Ljava/lang/Object;
.source "AndroidPanelLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panels/AndroidPanelLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Spec"
.end annotation


# static fields
.field public static final DEFAULT_CYLINDER_POSITION_Z:F = 0.0f

.field public static final DEFAULT_DENSITY:F = 13.0f

.field public static final DEFAULT_PLANE_POSITION_Z:F = -4.0f

.field public static final DEFAULT_RADIUS:F = 4.0f


# instance fields
.field public final density:F

.field public final height:I

.field public final hitTestingBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

.field public isSystemPositioned:Z

.field public final name:Ljava/lang/String;

.field public final posX:F

.field public final posY:F

.field public final posZ:F

.field public final radius:F

.field public final resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

.field public final rotX:F

.field public final rotY:F

.field public final rotZ:F

.field public final shape:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

.field public final supersampled:Z

.field public final themeResourceId:I

.field public usesLayerTransform:Z

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIFFFFFFFZLcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;FI)V
    .locals 4

    move-object v0, p0

    move v1, p6

    move/from16 v2, p15

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    .line 180
    iput-object v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->name:Ljava/lang/String;

    move v3, p2

    .line 181
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    move v3, p3

    .line 182
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    move-object/from16 v3, p12

    .line 183
    iput-object v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    move-object/from16 v3, p13

    .line 184
    iput-object v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->hitTestingBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object/from16 v3, p14

    .line 185
    iput-object v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->shape:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    move/from16 v3, p16

    .line 186
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->themeResourceId:I

    move v3, p4

    .line 187
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posX:F

    move v3, p5

    .line 188
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posY:F

    .line 189
    iput v1, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posZ:F

    move v3, p7

    .line 190
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->rotX:F

    move v3, p8

    .line 191
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->rotY:F

    move v3, p9

    .line 192
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->rotZ:F

    .line 193
    iput v2, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->radius:F

    const/4 v3, 0x0

    .line 194
    iput-boolean v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->isSystemPositioned:Z

    move v3, p10

    .line 195
    iput v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->density:F

    const/4 v3, 0x1

    .line 196
    iput-boolean v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->usesLayerTransform:Z

    move v3, p11

    .line 197
    iput-boolean v3, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->supersampled:Z

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 200
    :cond_0
    invoke-static {}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Radius or depth (posZ) are negative"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->name:Ljava/lang/String;

    .line 134
    iput p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    .line 135
    iput p3, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    .line 136
    iput-object p4, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->resizeBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    .line 137
    iput-object p5, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->hitTestingBehavior:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    .line 138
    iput-object p6, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->shape:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    .line 139
    iput p7, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->themeResourceId:I

    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posX:F

    .line 141
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posY:F

    .line 142
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->rotX:F

    .line 143
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->rotY:F

    .line 144
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->rotZ:F

    const/high16 p2, 0x41500000    # 13.0f

    .line 145
    iput p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->density:F

    const/4 p2, 0x0

    .line 146
    iput-boolean p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->supersampled:Z

    const/4 p3, 0x1

    .line 149
    iput-boolean p3, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->isSystemPositioned:Z

    .line 150
    iput-boolean p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->usesLayerTransform:Z

    .line 153
    sget-object p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->PortraitCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    if-eq p6, p2, :cond_1

    sget-object p2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    if-ne p6, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, -0x3f800000    # -4.0f

    .line 157
    iput p2, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posZ:F

    .line 158
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->radius:F

    goto :goto_1

    .line 154
    :cond_1
    :goto_0
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->posZ:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 155
    iput p1, p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->radius:F

    :goto_1
    return-void
.end method
