.class public abstract LD2;
.super LP3;
.source "PG"

# interfaces
.implements Lx;
.implements Lk2;
.implements Ll2;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Le7;

.field public final x:Landroid/os/Handler;

.field public final y:LF2;

.field public z:Lw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LP3;-><init>()V

    .line 2
    new-instance v0, LA2;

    invoke-direct {v0, p0}, LA2;-><init>(LD2;)V

    iput-object v0, p0, LD2;->x:Landroid/os/Handler;

    .line 3
    new-instance v0, LB2;

    invoke-direct {v0, p0}, LB2;-><init>(LD2;)V

    .line 4
    new-instance v1, LF2;

    invoke-direct {v1, v0}, LF2;-><init>(LG2;)V

    .line 5
    iput-object v1, p0, LD2;->y:LF2;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LD2;->C:Z

    return-void
.end method

.method public static a(LH2;Ll;)Z
    .locals 5

    .line 12
    invoke-virtual {p0}, LH2;->a()Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2;

    if-nez v2, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v3, v2, Lz2;->o0:Lo;

    .line 15
    iget-object v3, v3, Lo;->b:Ll;

    .line 16
    sget-object v4, Ll;->z:Ll;

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 18
    iget-object v1, v2, Lz2;->o0:Lo;

    .line 19
    invoke-virtual {v1, p1}, Lo;->a(Ll;)V

    const/4 v1, 0x1

    .line 20
    :cond_3
    iget-object v2, v2, Lz2;->P:LY2;

    if-eqz v2, :cond_0

    .line 21
    invoke-static {v2, p1}, LD2;->a(LH2;Ll;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static b(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public B()Lm;
    .locals 1

    .line 1
    iget-object v0, p0, LP3;->w:Lo;

    return-object v0
.end method

.method public D()LH2;
    .locals 1

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    .line 3
    iget-object v0, v0, LG2;->d:LY2;

    return-object v0
.end method

.method public E()V
    .locals 1

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0}, LY2;->k()V

    return-void
.end method

.method public final a(Lz2;)I
    .locals 4

    .line 2
    iget-object v0, p0, LD2;->F:Le7;

    invoke-virtual {v0}, Le7;->c()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_2

    .line 3
    :goto_0
    iget-object v0, p0, LD2;->F:Le7;

    iget v2, p0, LD2;->E:I

    .line 4
    iget-boolean v3, v0, Le7;->w:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0}, Le7;->b()V

    .line 6
    :cond_0
    iget-object v3, v0, Le7;->x:[I

    iget v0, v0, Le7;->z:I

    invoke-static {v3, v0, v2}, LN6;->a([III)I

    move-result v0

    if-ltz v0, :cond_1

    .line 7
    iget v0, p0, LD2;->E:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, LD2;->E:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, LD2;->E:I

    .line 9
    iget-object v2, p0, LD2;->F:Le7;

    iget-object p1, p1, Lz2;->B:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Le7;->c(ILjava/lang/Object;)V

    .line 10
    iget p1, p0, LD2;->E:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, LD2;->E:I

    return v0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p1}, LD2;->b(I)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, LD2;->A:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, LD2;->B:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, LD2;->C:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Lw3;->a(Ln;)Lw3;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lw3;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, LD2;->y:LF2;

    .line 13
    iget-object v0, v0, LF2;->a:LG2;

    .line 14
    iget-object v0, v0, LG2;->d:LY2;

    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, LH2;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    invoke-virtual {v0}, LF2;->b()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 2
    iget-object v1, p0, LD2;->F:Le7;

    invoke-virtual {v1, v0}, Le7;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, LD2;->F:Le7;

    invoke-virtual {v2, v0}, Le7;->c(I)V

    const-string v0, "FragmentActivity"

    if-nez v1, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v2, p0, LD2;->y:LF2;

    .line 6
    iget-object v2, v2, LF2;->a:LG2;

    iget-object v2, v2, LG2;->d:LY2;

    invoke-virtual {v2, v1}, LY2;->b(Ljava/lang/String;)Lz2;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 8
    invoke-virtual {v2, p1, p2, p3}, Lz2;->a(IILandroid/content/Intent;)V

    :goto_0
    return-void

    .line 9
    :cond_2
    invoke-static {}, Lm2;->a()V

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    .line 3
    iget-object v0, v0, LG2;->d:LY2;

    .line 4
    invoke-virtual {v0}, LH2;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, LH2;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, LD2;->y:LF2;

    invoke-virtual {v0}, LF2;->b()V

    .line 3
    iget-object v0, p0, LD2;->y:LF2;

    .line 4
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0, p1}, LY2;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v1, v0, LG2;->d:LY2;

    .line 3
    iget-object v2, v1, LY2;->H:LG2;

    if-nez v2, :cond_6

    .line 4
    iput-object v0, v1, LY2;->H:LG2;

    .line 5
    iput-object v0, v1, LY2;->I:LE2;

    const/4 v0, 0x0

    .line 6
    iput-object v0, v1, LY2;->J:Lz2;

    .line 7
    invoke-super {p0, p1}, LP3;->onCreate(Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC2;

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, v1, LC2;->a:Lw;

    if-eqz v2, :cond_0

    iget-object v3, p0, LD2;->z:Lw;

    if-nez v3, :cond_0

    .line 10
    iput-object v2, p0, LD2;->z:Lw;

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const-string v3, "android:support:fragments"

    .line 11
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 12
    iget-object v4, p0, LD2;->y:LF2;

    if-eqz v1, :cond_1

    iget-object v0, v1, LC2;->b:LZ2;

    .line 13
    :cond_1
    iget-object v1, v4, LF2;->a:LG2;

    iget-object v1, v1, LG2;->d:LY2;

    invoke-virtual {v1, v3, v0}, LY2;->a(Landroid/os/Parcelable;LZ2;)V

    const-string v0, "android:support:next_request_index"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LD2;->E:I

    const-string v0, "android:support:request_indicies"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android:support:request_fragment_who"

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 18
    array-length v1, v0

    array-length v3, p1

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    new-instance v1, Le7;

    array-length v3, v0

    invoke-direct {v1, v3}, Le7;-><init>(I)V

    iput-object v1, p0, LD2;->F:Le7;

    const/4 v1, 0x0

    .line 20
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 21
    iget-object v3, p0, LD2;->F:Le7;

    aget v4, v0, v1

    aget-object v5, p1, v1

    invoke-virtual {v3, v4, v5}, Le7;->c(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "FragmentActivity"

    const-string v0, "Invalid requestCode mapping in savedInstanceState."

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_4
    iget-object p1, p0, LD2;->F:Le7;

    if-nez p1, :cond_5

    .line 24
    new-instance p1, Le7;

    const/16 v0, 0xa

    .line 25
    invoke-direct {p1, v0}, Le7;-><init>(I)V

    .line 26
    iput-object p1, p0, LD2;->F:Le7;

    .line 27
    iput v2, p0, LD2;->E:I

    .line 28
    :cond_5
    iget-object p1, p0, LD2;->y:LF2;

    .line 29
    iget-object p1, p1, LF2;->a:LG2;

    iget-object p1, p1, LG2;->d:LY2;

    invoke-virtual {p1}, LY2;->h()V

    return-void

    .line 30
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object v0, p0, LD2;->y:LF2;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 3
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0, p2, v1}, LY2;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0, p1, p2, p3, p4}, LY2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 4
    iget-object v0, p0, LD2;->y:LF2;

    .line 5
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, LY2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, LD2;->z:Lw;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, LD2;->z:Lw;

    invoke-virtual {v0}, Lw;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, LD2;->y:LF2;

    .line 5
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0}, LY2;->i()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2
    iget-object v0, p0, LD2;->y:LF2;

    .line 3
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0}, LY2;->j()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object p1, p0, LD2;->y:LF2;

    .line 3
    iget-object p1, p1, LF2;->a:LG2;

    iget-object p1, p1, LG2;->d:LY2;

    invoke-virtual {p1, p2}, LY2;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-object p1, p0, LD2;->y:LF2;

    .line 5
    iget-object p1, p1, LF2;->a:LG2;

    iget-object p1, p1, LG2;->d:LY2;

    invoke-virtual {p1, p2}, LY2;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0, p1}, LY2;->a(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, LD2;->y:LF2;

    invoke-virtual {p1}, LF2;->b()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0, p2}, LY2;->a(Landroid/view/Menu;)V

    .line 3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LD2;->B:Z

    .line 3
    iget-object v0, p0, LD2;->x:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, LD2;->x:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    invoke-virtual {p0}, LD2;->E()V

    .line 6
    :cond_0
    iget-object v0, p0, LD2;->y:LF2;

    .line 7
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, LY2;->a(I)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0, p1}, LY2;->b(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 2
    iget-object v0, p0, LD2;->x:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-virtual {p0}, LD2;->E()V

    .line 4
    iget-object v0, p0, LD2;->y:LF2;

    invoke-virtual {v0}, LF2;->a()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, LD2;->y:LF2;

    .line 3
    iget-object p2, p2, LF2;->a:LG2;

    iget-object p2, p2, LG2;->d:LY2;

    invoke-virtual {p2, p3}, LY2;->b(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object p2, p0, LD2;->y:LF2;

    invoke-virtual {p2}, LF2;->b()V

    shr-int/lit8 p1, p1, 0x10

    const p2, 0xffff

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 2
    iget-object p2, p0, LD2;->F:Le7;

    invoke-virtual {p2, p1}, Le7;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object p3, p0, LD2;->F:Le7;

    invoke-virtual {p3, p1}, Le7;->c(I)V

    const-string p1, "FragmentActivity"

    if-nez p2, :cond_0

    const-string p2, "Activity result delivered for unknown Fragment."

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object p3, p0, LD2;->y:LF2;

    .line 6
    iget-object p3, p3, LF2;->a:LG2;

    iget-object p3, p3, LG2;->d:LY2;

    invoke-virtual {p3, p2}, LY2;->b(Ljava/lang/String;)Lz2;

    move-result-object p3

    if-nez p3, :cond_1

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity result no fragment exists for who: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, LD2;->x:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LD2;->B:Z

    .line 4
    iget-object v0, p0, LD2;->y:LF2;

    invoke-virtual {v0}, LF2;->a()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    .line 2
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    .line 3
    iget-object v1, v0, LY2;->W:LZ2;

    invoke-static {v1}, LY2;->a(LZ2;)V

    .line 4
    iget-object v0, v0, LY2;->W:LZ2;

    if-nez v0, :cond_0

    .line 5
    iget-object v1, p0, LD2;->z:Lw;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    new-instance v1, LC2;

    invoke-direct {v1}, LC2;-><init>()V

    .line 7
    iget-object v2, p0, LD2;->z:Lw;

    iput-object v2, v1, LC2;->a:Lw;

    .line 8
    iput-object v0, v1, LC2;->b:LZ2;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, LP3;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, LD2;->D()LH2;

    move-result-object v0

    sget-object v1, Ll;->y:Ll;

    invoke-static {v0, v1}, LD2;->a(LH2;Ll;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, LD2;->y:LF2;

    .line 4
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0}, LY2;->q()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android:support:fragments"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    :cond_1
    iget-object v0, p0, LD2;->F:Le7;

    invoke-virtual {v0}, Le7;->c()I

    move-result v0

    if-lez v0, :cond_3

    .line 7
    iget v0, p0, LD2;->E:I

    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v0, p0, LD2;->F:Le7;

    invoke-virtual {v0}, Le7;->c()I

    move-result v0

    new-array v0, v0, [I

    .line 9
    iget-object v1, p0, LD2;->F:Le7;

    invoke-virtual {v1}, Le7;->c()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, LD2;->F:Le7;

    invoke-virtual {v3}, Le7;->c()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 11
    iget-object v3, p0, LD2;->F:Le7;

    invoke-virtual {v3, v2}, Le7;->b(I)I

    move-result v3

    aput v3, v0, v2

    .line 12
    iget-object v3, p0, LD2;->F:Le7;

    invoke-virtual {v3, v2}, Le7;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "android:support:request_indicies"

    .line 13
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LD2;->C:Z

    .line 3
    iget-boolean v0, p0, LD2;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LD2;->A:Z

    .line 5
    iget-object v0, p0, LD2;->y:LF2;

    .line 6
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0}, LY2;->g()V

    .line 7
    :cond_0
    iget-object v0, p0, LD2;->y:LF2;

    invoke-virtual {v0}, LF2;->b()V

    .line 8
    iget-object v0, p0, LD2;->y:LF2;

    invoke-virtual {v0}, LF2;->a()Z

    .line 9
    iget-object v0, p0, LD2;->y:LF2;

    .line 10
    iget-object v0, v0, LF2;->a:LG2;

    iget-object v0, v0, LG2;->d:LY2;

    invoke-virtual {v0}, LY2;->l()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 1
    iget-object v0, p0, LD2;->y:LF2;

    invoke-virtual {v0}, LF2;->b()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LD2;->C:Z

    .line 3
    :cond_0
    invoke-virtual {p0}, LD2;->D()LH2;

    move-result-object v1

    sget-object v2, Ll;->y:Ll;

    invoke-static {v1, v2}, LD2;->a(LH2;Ll;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, LD2;->y:LF2;

    .line 5
    iget-object v1, v1, LF2;->a:LG2;

    iget-object v1, v1, LG2;->d:LY2;

    .line 6
    iput-boolean v0, v1, LY2;->N:Z

    const/4 v0, 0x2

    .line 7
    invoke-virtual {v1, v0}, LY2;->a(I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LD2;->D:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 2
    invoke-static {p2}, LD2;->b(I)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, LD2;->D:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 5
    invoke-static {p2}, LD2;->b(I)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-static {p2}, LD2;->b(I)V

    .line 2
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 3
    invoke-static {p2}, LD2;->b(I)V

    .line 4
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public x()Lw;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, LD2;->z:Lw;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC2;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, LC2;->a:Lw;

    iput-object v0, p0, LD2;->z:Lw;

    .line 5
    :cond_0
    iget-object v0, p0, LD2;->z:Lw;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lw;

    invoke-direct {v0}, Lw;-><init>()V

    iput-object v0, p0, LD2;->z:Lw;

    .line 7
    :cond_1
    iget-object v0, p0, LD2;->z:Lw;

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
