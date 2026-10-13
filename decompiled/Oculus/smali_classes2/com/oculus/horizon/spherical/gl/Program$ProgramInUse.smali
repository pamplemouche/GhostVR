.class public Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;
.super Ljava/lang/Object;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/gl/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgramInUse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/spherical/gl/Program;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/spherical/gl/Program;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->this$0:Lcom/oculus/horizon/spherical/gl/Program;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getUniformLocation(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->this$0:Lcom/oculus/horizon/spherical/gl/Program;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/Program;->access$100(Lcom/oculus/horizon/spherical/gl/Program;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->this$0:Lcom/oculus/horizon/spherical/gl/Program;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/Program;->access$100(Lcom/oculus/horizon/spherical/gl/Program;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 193
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->this$0:Lcom/oculus/horizon/spherical/gl/Program;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/Program;->access$200(Lcom/oculus/horizon/spherical/gl/Program;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 189
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v2, "Uniform location not found: %s"

    invoke-static {v0, v2, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->this$0:Lcom/oculus/horizon/spherical/gl/Program;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/gl/Program;->access$100(Lcom/oculus/horizon/spherical/gl/Program;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 193
    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/oculus/horizon/spherical/gl/Geometry;)Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->this$0:Lcom/oculus/horizon/spherical/gl/Program;

    invoke-static {v0, p1}, Lcom/oculus/horizon/spherical/gl/Program;->access$000(Lcom/oculus/horizon/spherical/gl/Program;Lcom/oculus/horizon/spherical/gl/Geometry;)V

    .line 175
    return-object p0
.end method

.method public setMatrix4(Ljava/lang/String;[F)Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 53
    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 54
    return-object p0
.end method

.method public setTexture(Ljava/lang/String;III)Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/gl/Program$ProgramInUse;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    .line 161
    const v1, 0x84c0

    add-int/2addr v1, p2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 162
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 165
    return-object p0
.end method
