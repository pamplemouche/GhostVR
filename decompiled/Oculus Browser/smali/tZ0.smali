.class public LtZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public final a:I

.field public final synthetic b:LuZ0;


# direct methods
.method public constructor <init>(LuZ0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LtZ0;->b:LuZ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, LtZ0;->a:I

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 10

    .line 1
    iget-object v0, p0, LtZ0;->b:LuZ0;

    iget v1, p0, LtZ0;->a:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v9}, LuZ0;->a(IIIIIIIII)V

    return-void
.end method
