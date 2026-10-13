.class public LjZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic A:D

.field public final synthetic B:D

.field public final synthetic C:LuZ0;

.field public final synthetic w:LiZ0;

.field public final synthetic x:I

.field public final synthetic y:D

.field public final synthetic z:D


# direct methods
.method public constructor <init>(LuZ0;LiZ0;IDDDD)V
    .locals 0

    .line 1
    iput-object p1, p0, LjZ0;->C:LuZ0;

    iput-object p2, p0, LjZ0;->w:LiZ0;

    iput p3, p0, LjZ0;->x:I

    iput-wide p4, p0, LjZ0;->y:D

    iput-wide p6, p0, LjZ0;->z:D

    iput-wide p8, p0, LjZ0;->A:D

    iput-wide p10, p0, LjZ0;->B:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    .line 1
    iget-object p1, p0, LjZ0;->w:LiZ0;

    invoke-virtual {p1}, LiZ0;->getCount()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-ne p3, p1, :cond_0

    .line 2
    iget-object p1, p0, LjZ0;->C:LuZ0;

    .line 3
    invoke-virtual {p1}, LuZ0;->a()V

    .line 4
    iget-object v0, p0, LjZ0;->C:LuZ0;

    iget v1, p0, LjZ0;->x:I

    iget-wide v2, p0, LjZ0;->y:D

    iget-wide v4, p0, LjZ0;->z:D

    iget-wide v6, p0, LjZ0;->A:D

    iget-wide v8, p0, LjZ0;->B:D

    invoke-virtual/range {v0 .. v9}, LuZ0;->a(IDDDD)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, LjZ0;->w:LiZ0;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/picker/DateTimeSuggestion;

    .line 6
    iget-wide p3, p1, Lorg/chromium/content/browser/picker/DateTimeSuggestion;->a:D

    .line 7
    iget-object p1, p0, LjZ0;->C:LuZ0;

    .line 8
    iget-object p1, p1, LuZ0;->d:LrZ0;

    .line 9
    check-cast p1, LTX0;

    invoke-virtual {p1, p3, p4}, LTX0;->a(D)V

    .line 10
    iget-object p1, p0, LjZ0;->C:LuZ0;

    .line 11
    invoke-virtual {p1}, LuZ0;->a()V

    .line 12
    iget-object p1, p0, LjZ0;->C:LuZ0;

    .line 13
    iput-boolean p2, p1, LuZ0;->b:Z

    :goto_0
    return-void
.end method
